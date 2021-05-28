
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, roscpp }:
buildRosPackage {
  pname = "ros-noetic-graceful-controller";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/graceful_controller-gbp/archive/release/noetic/graceful_controller/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "b83f69f2b081a4ba3d31a70a20ed629e926897868918e8b01a998773d9546294";
  };

  buildType = "catkin";
  buildInputs = [ angles ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A controller.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
