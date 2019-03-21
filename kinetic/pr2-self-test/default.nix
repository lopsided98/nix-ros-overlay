
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-self-test-msgs, joint-qualification-controllers, pr2-counterbalance-check, pr2-bringup-tests }:
buildRosPackage {
  pname = "ros-kinetic-pr2-self-test";
  version = "1.0.14";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_self_test-release/archive/release/kinetic/pr2_self_test/1.0.14-0.tar.gz;
    sha256 = "6c4e2e53f95857a496eca0f13d373002ea1cf94c76fc6e9433e64b67c94fc394";
  };

  propagatedBuildInputs = [ pr2-self-test-msgs pr2-bringup-tests joint-qualification-controllers pr2-counterbalance-check ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_self_test package'';
    #license = lib.licenses.TODO;
  };
}
