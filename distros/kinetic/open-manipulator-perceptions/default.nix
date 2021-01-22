
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, open-manipulator-ar-markers }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-perceptions";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_perceptions-release/archive/release/kinetic/open_manipulator_perceptions/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "9c4796566c473c1ab2c1672af40475f0cd271793b56f6e863f94eaed93579349";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ open-manipulator-ar-markers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This packages are configured to related perception packages as AR marker, Object recognition and so on.'';
    license = with lib.licenses; [ asl20 ];
  };
}
