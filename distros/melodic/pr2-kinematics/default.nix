
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-arm-kinematics }:
buildRosPackage {
  pname = "ros-melodic-pr2-kinematics";
  version = "1.0.10";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_kinematics-release/archive/release/melodic/pr2_kinematics/1.0.10-0.tar.gz";
    name = "1.0.10-0.tar.gz";
    sha256 = "a1103dc191b832b2a06bb07d9eb6d4c54a948377e0796b9d1f556e7ee3635c2c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pr2-arm-kinematics ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_kinematics package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
