
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin, ecl-errors, ecl-config }:
buildRosPackage {
  pname = "ros-kinetic-ecl-exceptions";
  version = "0.61.17";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_exceptions/0.61.17-0.tar.gz;
    sha256 = "b48b6e9d1ca0d048d451551b971d15faa21c373e0fab3107925384bf6387f7de";
  };

  buildInputs = [ ecl-license ecl-errors ecl-config ];
  propagatedBuildInputs = [ ecl-license ecl-errors ecl-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Template based exceptions - these are simple and practical
     and avoid the proliferation of exception types. Although not
     syntatactically ideal, it is convenient and eminently practical.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
