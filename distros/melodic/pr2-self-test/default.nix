
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-qualification-controllers, pr2-bringup-tests, pr2-counterbalance-check, pr2-self-test-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-self-test";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_self_test-release/archive/release/melodic/pr2_self_test/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "cfb06ed51a6fe0252689d276c2302fb691f2928b2a009c92abcde0c0e74afd67";
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
