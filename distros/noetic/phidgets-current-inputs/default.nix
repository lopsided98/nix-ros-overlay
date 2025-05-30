
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, roscpp, roslaunch, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-current-inputs";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_current_inputs/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "3489bf7ba5bc8391213e7381b81f4de389aee26dbd2509d12b6942aa48870cc0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet phidgets-api roscpp roslaunch std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Driver for the Phidgets Current Input devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
