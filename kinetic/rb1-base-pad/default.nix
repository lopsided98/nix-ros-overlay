
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, robotnik-msgs, diagnostic-updater, message-generation, message-runtime, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rb1-base-pad";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/rb1_base_common-release/archive/release/kinetic/rb1_base_pad/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "e3b86d1d291cc24c956dd008025ebf3fd0320b121e5c22adc7bd6b2431f81dac";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs robotnik-msgs diagnostic-updater message-generation roscpp geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs robotnik-msgs diagnostic-updater message-runtime roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rb1_base_pad package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
