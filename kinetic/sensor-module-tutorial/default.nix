
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, std-msgs, catkin, robotis-framework-common, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-sensor-module-tutorial";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/sensor_module_tutorial/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "10ee406db0188592993202ac6075c720d822e7bd575d9e3a8fe88cb5955c1f0a";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs boost robotis-framework-common roscpp ];
  propagatedBuildInputs = [ std-msgs boost robotis-framework-common roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The sensor_module_tutorial package'';
    license = with lib.licenses; [ asl20 ];
  };
}
