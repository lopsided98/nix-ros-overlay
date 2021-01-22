
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosconsole, roscpp }:
buildRosPackage {
  pname = "ros-melodic-rosfmt";
  version = "6.2.0-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosfmt-release/archive/release/melodic/rosfmt/6.2.0-1.tar.gz";
    name = "6.2.0-1.tar.gz";
    sha256 = "2d4429dfb2fe8c718c060da04c0ac1cfbbf3befcdcca82b079bcdc9f8f1bfe53";
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
