
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, std-msgs, tf, catkin, rospy, tf-conversions, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-underwater-vehicle-dynamics";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/underwater_simulation-release/archive/release/melodic/underwater_vehicle_dynamics/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "f71af4d9080f1ff8f59de9f1195263f67c9087db6a39cd02c569c9e76621d3fe";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs tf rospy tf-conversions nav-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs std-msgs tf rospy tf-conversions nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An underwater dynamics module'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
