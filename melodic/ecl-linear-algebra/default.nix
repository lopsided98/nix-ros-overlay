
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-converters, ecl-formatters, ecl-eigen, sophus, catkin, ecl-build, ecl-exceptions, ecl-license, ecl-math }:
buildRosPackage {
  pname = "ros-melodic-ecl-linear-algebra";
  version = "0.62.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_linear_algebra/0.62.2-0.tar.gz;
    sha256 = "5e9b99a6c02c0546ffdd155726bb735897f8591739850b9614143d6719e756e6";
  };

  buildInputs = [ ecl-converters ecl-eigen ecl-formatters sophus ecl-build ecl-exceptions ecl-license ecl-math ];
  propagatedBuildInputs = [ ecl-converters ecl-eigen ecl-formatters sophus ecl-build ecl-exceptions ecl-license ecl-math ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ecl frontend to a linear matrix package (currently eigen).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
