
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-formatters, ecl-license, catkin, ecl-math, ecl-exceptions, ecl-eigen, sophus, ecl-build, ecl-converters }:
buildRosPackage {
  pname = "ros-kinetic-ecl-linear-algebra";
  version = "0.61.17";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_linear_algebra/0.61.17-0.tar.gz";
    name = "0.61.17-0.tar.gz";
    sha256 = "5407d14c77db0b791c72e339627897af82acc33e62637afb2dcaa0f4d3241904";
  };

  buildType = "catkin";
  buildInputs = [ sophus ecl-formatters ecl-license ecl-exceptions ecl-eigen ecl-math ecl-build ecl-converters ];
  propagatedBuildInputs = [ sophus ecl-formatters ecl-license ecl-exceptions ecl-eigen ecl-math ecl-build ecl-converters ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ecl frontend to a linear matrix package (currently eigen).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
