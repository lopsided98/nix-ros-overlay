
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosconsole, roscpp }:
buildRosPackage {
  pname = "ros-noetic-rosfmt";
  version = "6.2.0-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosfmt-release/archive/release/noetic/rosfmt/6.2.0-1.tar.gz";
    name = "6.2.0-1.tar.gz";
    sha256 = "be52a461360a5d459c3794a4f167a4b9dc4d8032d952978fccb2f54eca2e51c0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosconsole roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fmt is an open-source formatting library for C++.
		It can be used as a safe and fast alternative to (s)printf and IOStreams.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
