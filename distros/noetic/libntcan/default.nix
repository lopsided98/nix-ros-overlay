
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dpkg }:
buildRosPackage {
  pname = "ros-noetic-libntcan";
  version = "0.6.17-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/noetic/libntcan/0.6.17-1.tar.gz";
    name = "0.6.17-1.tar.gz";
    sha256 = "98ea696c9ecf7b235e565db4b6f2f7a85112ad2e61f5128eb3776214b73f5192";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dpkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libntcan to use it as a ros dependency.'';
    license = with lib.licenses; [ "proprietary" ];
  };
}
