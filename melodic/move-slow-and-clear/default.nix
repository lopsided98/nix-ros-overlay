
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, cmake-modules, nav-core, catkin, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-move-slow-and-clear";
  version = "1.16.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/melodic/move_slow_and_clear/1.16.2-0.tar.gz;
    sha256 = "03d382b561c972861428737b3804a666bc1e8f20a962e160049cda6202c4bbd4";
  };

  buildInputs = [ costmap-2d cmake-modules pluginlib nav-core roscpp geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d pluginlib nav-core roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''move_slow_and_clear'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
