
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosconsole, roscpp }:
buildRosPackage {
  pname = "ros-melodic-rosfmt";
  version = "6.0.0";

  src = fetchurl {
    url = https://github.com/xqms/rosfmt-release/archive/release/melodic/rosfmt/6.0.0-0.tar.gz;
    sha256 = "e1ad333968f25d127063d05379f33345f56fa5fa9d195f24c69d9139b9013770";
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
