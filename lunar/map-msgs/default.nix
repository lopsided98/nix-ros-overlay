
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, nav-msgs, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lunar-map-msgs";
  version = "1.13.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_msgs-release/archive/release/lunar/map_msgs/1.13.0-0.tar.gz;
    sha256 = "86c5ca9ad9fdf0f6f06f89ba0a5a75c3621edb31cace52ce77570910a4978a44";
  };

  buildInputs = [ std-msgs nav-msgs message-generation sensor-msgs ];
  propagatedBuildInputs = [ std-msgs sensor-msgs nav-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package defines messages commonly used in mapping packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
