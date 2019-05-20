
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosconsole, roscpp }:
buildRosPackage {
  pname = "ros-melodic-rosfmt";
  version = "6.1.0-r1";

  src = fetchurl {
    url = https://github.com/xqms/rosfmt-release/archive/release/melodic/rosfmt/6.1.0-1.tar.gz;
    sha256 = "8863afa48a520a2e262575c5a650c6258e5da038400063889cc44ef42bfcce3d";
  };

  buildInputs = [ roscpp rosconsole ];
  propagatedBuildInputs = [ roscpp rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fmt is an open-source formatting library for C++.
		It can be used as a safe and fast alternative to (s)printf and IOStreams.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
