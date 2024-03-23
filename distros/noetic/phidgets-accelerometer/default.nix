
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, roscpp, roslaunch, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-accelerometer";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_accelerometer/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "39e3d2e0954bee0dacef1be215916a523ac38ede2f9766ad8e337b06f7aee0a2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet phidgets-api roscpp roslaunch sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Driver for the Phidgets Accelerometer devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
