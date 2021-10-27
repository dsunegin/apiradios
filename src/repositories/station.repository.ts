import {inject} from '@loopback/core';
import {DefaultCrudRepository} from '@loopback/repository';
import {DbradioDataSource} from '../datasources';
import {Station, StationRelations} from '../models';

export class StationRepository extends DefaultCrudRepository<
  Station,
  typeof Station.prototype.id,
  StationRelations
> {
  constructor(
    @inject('datasources.dbradio') dataSource: DbradioDataSource,
  ) {
    super(Station, dataSource);
  }
}
