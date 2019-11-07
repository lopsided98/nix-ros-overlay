
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gmapping, cob-navigation-global, catkin, cob-supported-robots, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-cob-mapping-slam";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/melodic/cob_mapping_slam/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "eccdc39eae7f62e1801a33b22c541eca4d9b035b053c5dca897390f452795e88";
  };

  buildType = "catkin";
  checkInputs = [ cob-supported-robots roslaunch ];
  propagatedBuildInputs = [ gmapping cob-navigation-global ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_mapping_slam holds launch files for running SLAM using the <a href="http://ros.org/wiki/gmapping">gmapping</a> package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
