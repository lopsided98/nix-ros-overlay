
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-utilities, catkin, ecl-threads, ecl-containers, ecl-license, ecl-errors, ecl-type-traits, ecl-config, ecl-mpl }:
buildRosPackage {
  pname = "ros-melodic-ecl-devices";
  version = "0.62.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_devices/0.62.2-0.tar.gz;
    sha256 = "8fdd41c3aab78f532ddc8c228da3778ecdcb64e8a566952f1ec9dc4f026ba144";
  };

  buildInputs = [ ecl-containers ecl-license ecl-utilities ecl-errors ecl-type-traits ecl-mpl ecl-config ecl-threads ];
  propagatedBuildInputs = [ ecl-containers ecl-license ecl-utilities ecl-errors ecl-type-traits ecl-mpl ecl-config ecl-threads ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an extensible and standardised framework for input-output devices.'';
    #license = lib.licenses.BSD;
  };
}
