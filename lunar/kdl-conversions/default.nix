
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, orocos-kdl, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-kdl-conversions";
  version = "1.11.9";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry-release/archive/release/lunar/kdl_conversions/1.11.9-0.tar.gz;
    sha256 = "5615e6f50ae396f2c886e3bf74e6eb714ed4b2762ed44d4e5c642a0d88db8c7d";
  };

  buildInputs = [ orocos-kdl geometry-msgs ];
  propagatedBuildInputs = [ orocos-kdl geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversion functions between KDL and geometry_msgs types.'';
    #license = lib.licenses.BSD;
  };
}
