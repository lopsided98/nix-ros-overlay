
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, eigen, geometry-msgs, mavros-msgs, message-generation, message-runtime, msp, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-multiwii";
  version = "2.1.0";

  src = fetchurl {
    url = "https://github.com/christianrauch/ros-multiwii-release/archive/release/kinetic/multiwii/2.1.0-0.tar.gz";
    name = "2.1.0-0.tar.gz";
    sha256 = "0ae71a854438fb1034b90fa0aec5ddcd2d4d71f960ace95a8e3c96e4e33d4aa6";
  };

  buildType = "catkin";
  buildInputs = [ eigen geometry-msgs mavros-msgs message-generation sensor-msgs std-msgs ];
  propagatedBuildInputs = [ dynamic-reconfigure message-runtime msp roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The multiwii package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
