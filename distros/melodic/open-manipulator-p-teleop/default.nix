
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, open-manipulator-msgs, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-p-teleop";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_p-release/archive/release/melodic/open_manipulator_p_teleop/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "bf9fafcdfa007f5cd90496709b0f92fe9b1ee21af0907cbc4d72d55034a86ed1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ open-manipulator-msgs roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for OpenMANIPULATOR-P teleoperation'';
    license = with lib.licenses; [ asl20 ];
  };
}
