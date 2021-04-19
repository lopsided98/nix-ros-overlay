
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rdl-benchmark, rdl-cmake, rdl-dynamics, rdl-msgs, rdl-ros-tools, rdl-urdfreader }:
buildRosPackage {
  pname = "ros-kinetic-rdl";
  version = "1.1.0";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/-/archive/release/kinetic/rdl/1.1.0-0/rdl_release-release-kinetic-rdl-1.1.0-0.tar.gz";
    name = "rdl_release-release-kinetic-rdl-1.1.0-0.tar.gz";
    sha256 = "013d88610b9486e2895b3fdea15200f55a7033cac956582b7d343dd4d38144e4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rdl-benchmark rdl-cmake rdl-dynamics rdl-msgs rdl-ros-tools rdl-urdfreader ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rdl meta-package'';
    license = with lib.licenses; [ "zlib" ];
  };
}
