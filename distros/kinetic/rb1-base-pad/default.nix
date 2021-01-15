
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, geometry-msgs, message-generation, message-runtime, robotnik-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rb1-base-pad";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/rb1_base_common-release/archive/release/kinetic/rb1_base_pad/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "e3b86d1d291cc24c956dd008025ebf3fd0320b121e5c22adc7bd6b2431f81dac";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ diagnostic-updater geometry-msgs message-runtime robotnik-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rb1_base_pad package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
