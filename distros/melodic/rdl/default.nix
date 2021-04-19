
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rdl-benchmark, rdl-cmake, rdl-dynamics, rdl-msgs, rdl-ros-tools, rdl-urdfreader }:
buildRosPackage {
  pname = "ros-melodic-rdl";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/-/archive/release/melodic/rdl/3.2.0-1/rdl_release-release-melodic-rdl-3.2.0-1.tar.gz";
    name = "rdl_release-release-melodic-rdl-3.2.0-1.tar.gz";
    sha256 = "402f1c9db58df28b9506bff1ae06cafb299e6a076cb46a1bc44f8bfc9019436e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rdl-benchmark rdl-cmake rdl-dynamics rdl-msgs rdl-ros-tools rdl-urdfreader ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rdl meta-package'';
    license = with lib.licenses; [ "zlib" ];
  };
}
