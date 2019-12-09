
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, prbt-hardware-support, pilz-control, catkin, prbt-support, prbt-ikfast-manipulator-plugin, prbt-moveit-config }:
buildRosPackage {
  pname = "ros-melodic-pilz-robots";
  version = "0.5.13-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_robots/0.5.13-1.tar.gz";
    name = "0.5.13-1.tar.gz";
    sha256 = "60aaa3937e626e0b48324a8680c265048639a236ac8e89f8c68ff6fd26079698";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ prbt-hardware-support pilz-control prbt-support prbt-ikfast-manipulator-plugin prbt-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
