
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosconsole, roscpp }:
buildRosPackage {
  pname = "ros-melodic-rosfmt";
  version = "7.0.0-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosfmt-release/archive/release/melodic/rosfmt/7.0.0-1.tar.gz";
    name = "7.0.0-1.tar.gz";
    sha256 = "9b377b866f2d9d6fc807b982f0893cf58a95fbce0af4a7cc92b88507db5c037b";
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
