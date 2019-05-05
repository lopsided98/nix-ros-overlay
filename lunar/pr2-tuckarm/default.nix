
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-mechanism-msgs, trajectory-msgs, catkin, rospy, pr2-tuck-arms-action }:
buildRosPackage {
  pname = "ros-lunar-pr2-tuckarm";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_apps-release/archive/release/lunar/pr2_tuckarm/0.6.1-0.tar.gz;
    sha256 = "17097b65fc32a659473c42b8dd9b20c69af1d7b6c25b7efd517d967fb5baac7f";
  };

  propagatedBuildInputs = [ pr2-mechanism-msgs pr2-tuck-arms-action trajectory-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tucks the arms of the PR2 robot into a safe position for moving the base of the robot.
     This also moves the arms out of the view of the tilting laser scanner, as much as possible.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
