
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-utilities, catkin, ecl-threads, ecl-containers, ecl-license, ecl-errors, ecl-type-traits, ecl-config, ecl-mpl }:
buildRosPackage {
  pname = "ros-melodic-ecl-devices";
  version = "0.62.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_devices/0.62.2-0.tar.gz";
    name = "0.62.2-0.tar.gz";
    sha256 = "8fdd41c3aab78f532ddc8c228da3778ecdcb64e8a566952f1ec9dc4f026ba144";
  };

  buildType = "catkin";
  buildInputs = [ ecl-utilities ecl-threads ecl-containers ecl-license ecl-errors ecl-type-traits ecl-config ecl-mpl ];
  propagatedBuildInputs = [ ecl-utilities ecl-threads ecl-containers ecl-license ecl-errors ecl-type-traits ecl-config ecl-mpl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an extensible and standardised framework for input-output devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
