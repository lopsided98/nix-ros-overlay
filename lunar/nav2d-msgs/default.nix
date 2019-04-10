
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-nav2d-msgs";
  version = "0.4.1";

  src = fetchurl {
    url = https://github.com/skasperski/navigation_2d-release/archive/release/lunar/nav2d_msgs/0.4.1-0.tar.gz;
    sha256 = "9a2e4f51a274a8a434ac9d711867756eafe3f4ffba4b7e56d7da5387d1ba413f";
  };

  buildInputs = [ std-msgs sensor-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs sensor-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used for 2D-Navigation.'';
    #license = lib.licenses.GPLv3;
  };
}
