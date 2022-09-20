
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, geometry-msgs, open-manipulator-msgs, open-manipulator-p-libs, robotis-manipulator, roscpp, sensor-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-p-controller";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_p-release/archive/release/melodic/open_manipulator_p_controller/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "1f363bde35481b1c259a2d7c92667a6dd5dfe6f2f8794537ce7c76560f55092c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost cmake-modules geometry-msgs open-manipulator-msgs open-manipulator-p-libs robotis-manipulator roscpp sensor-msgs std-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for OpenMANIPULATOR-P Controller'';
    license = with lib.licenses; [ asl20 ];
  };
}
