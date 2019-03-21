
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosconsole, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rosfmt";
  version = "6.0.0";

  src = fetchurl {
    url = https://github.com/xqms/rosfmt-release/archive/release/kinetic/rosfmt/6.0.0-0.tar.gz;
    sha256 = "a3e5083282aef5a8e01b4ebfc0f9a4c9adea99fa41e7c86f871924abf71105cb";
  };

  propagatedBuildInputs = [ roscpp rosconsole ];
  nativeBuildInputs = [ catkin roscpp rosconsole ];

  meta = {
    description = ''fmt is an open-source formatting library for C++.
		It can be used as a safe and fast alternative to (s)printf and IOStreams.'';
    #license = lib.licenses.BSD;
  };
}
