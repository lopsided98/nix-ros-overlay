
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-converters, ecl-formatters, ecl-eigen, sophus, catkin, ecl-build, ecl-exceptions, ecl-license, ecl-math }:
buildRosPackage {
  pname = "ros-kinetic-ecl-linear-algebra";
  version = "0.61.17";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_linear_algebra/0.61.17-0.tar.gz";
    name = "0.61.17-0.tar.gz";
    sha256 = "5407d14c77db0b791c72e339627897af82acc33e62637afb2dcaa0f4d3241904";
  };

  buildType = "catkin";
  buildInputs = [ ecl-converters ecl-eigen ecl-formatters sophus ecl-build ecl-exceptions ecl-license ecl-math ];
  propagatedBuildInputs = [ ecl-converters ecl-eigen ecl-formatters sophus ecl-build ecl-exceptions ecl-license ecl-math ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ecl frontend to a linear matrix package (currently eigen).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
