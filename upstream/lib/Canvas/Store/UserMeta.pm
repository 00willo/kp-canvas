#
# Copyright (C) 2013    Ian Firns   <firnsy@kororaproject.org>
#                       Chris Smart <csmart@kororaproject.org>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
package Canvas::Store::UserMeta;

use strict;
use base 'Canvas::Store';

#
# PERL INCLUDES
#
use Data::Dumper;

#
# MODEL DEFINITION
#
__PACKAGE__->table('canvas_usermeta');
__PACKAGE__->columns(All => qw/meta_id user_id meta_key meta_value/);

#
# 1:N MAPPINGS
#
__PACKAGE__->has_a(user_id  => 'Canvas::Store::User');

1;
