
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-qualification-controllers, pr2-bringup-tests, pr2-counterbalance-check, pr2-self-test-msgs }:
buildRosPackage {
  pname = "ros-noetic-pr2-self-test";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_self_test-release/archive/release/noetic/pr2_self_test/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "16c9ed1182dfb953d741b40605c53ae37e2f1d9fd81394f1a07131040105ee4e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joint-qualification-controllers pr2-bringup-tests pr2-counterbalance-check pr2-self-test-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_self_test package'';
    license = with lib.licenses; [ "TODO-CATKIN-PACKAGE-LICENSE" ];
  };
}
