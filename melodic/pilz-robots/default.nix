
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, prbt-support, prbt-ikfast-manipulator-plugin, prbt-moveit-config }:
buildRosPackage {
  pname = "ros-melodic-pilz-robots";
  version = "0.5.7-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_robots/0.5.7-1.tar.gz";
    name = "0.5.7-1.tar.gz";
    sha256 = "bd55030f85378be2ec1236c1c9bd0293f4933f74f58aed32302fb03d17af358f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ prbt-ikfast-manipulator-plugin prbt-support prbt-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
