
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, catkin, actionlib, rospy, tf }:
buildRosPackage {
  pname = "ros-lunar-pr2-position-scripts";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_apps-release/archive/release/lunar/pr2_position_scripts/0.6.1-0.tar.gz;
    sha256 = "dca0951fe0f3e4ac603df796f4e46d9562a331929d684ac96d25bbc6c4894bf6";
  };

  buildInputs = [ pr2-controllers-msgs tf actionlib rospy ];
  propagatedBuildInputs = [ pr2-controllers-msgs tf actionlib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a number of scripts to set various components of the PR2. They are used in the apps to improve usablity.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
