
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosconsole, roscpp }:
buildRosPackage {
  pname = "ros-lunar-rosfmt";
  version = "6.0.0";

  src = fetchurl {
    url = https://github.com/xqms/rosfmt-release/archive/release/lunar/rosfmt/6.0.0-0.tar.gz;
    sha256 = "6c4f268ef2558d33b0d22acdc3b2903a4dc205718b48e4bb82a961e9ac136ba7";
  };

  buildInputs = [ roscpp rosconsole ];
  propagatedBuildInputs = [ roscpp rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fmt is an open-source formatting library for C++.
		It can be used as a safe and fast alternative to (s)printf and IOStreams.'';
    #license = lib.licenses.BSD;
  };
}
