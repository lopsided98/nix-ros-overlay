
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-converters, ecl-formatters, ecl-eigen, sophus, catkin, ecl-build, ecl-exceptions, ecl-license, ecl-math }:
buildRosPackage {
  pname = "ros-kinetic-ecl-linear-algebra";
  version = "0.61.17";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_linear_algebra/0.61.17-0.tar.gz;
    sha256 = "5407d14c77db0b791c72e339627897af82acc33e62637afb2dcaa0f4d3241904";
  };

  buildInputs = [ ecl-exceptions ecl-converters ecl-eigen ecl-license ecl-formatters ecl-math sophus ecl-build ];
  propagatedBuildInputs = [ ecl-exceptions ecl-converters ecl-eigen ecl-license ecl-formatters ecl-math sophus ecl-build ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ecl frontend to a linear matrix package (currently eigen).'';
    #license = lib.licenses.BSD;
  };
}
