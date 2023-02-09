/*
 * This file is part of the TrinityCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

// This is where scripts' loading functions should be declared:
void AddSC_zone_the_forbidden_reach();

// Ruby Life Pools
void AddSC_instance_ruby_life_pools();
void AddSC_ruby_life_pools();

// The name of this function should match:
// void Add${NameOfDirectory}Scripts()
void AddDragonIslesScripts()
{
    AddSC_zone_the_forbidden_reach();

    // Ruby Life Pools
    AddSC_instance_ruby_life_pools();
    AddSC_ruby_life_pools();
}
