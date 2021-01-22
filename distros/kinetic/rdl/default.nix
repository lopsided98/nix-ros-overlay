
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rdl-benchmark, rdl-cmake, rdl-dynamics, rdl-msgs, rdl-ros-tools, rdl-urdfreader }:
buildRosPackage {
  pname = "ros-kinetic-rdl";
  version = "1.1.0";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/repository/archive.tar.gz?ref=release/kinetic/rdl/1.1.0-0";
    name = "archive.tar.gz";
    sha256 = "c582bf84e03b65888829f3883e3dc0d820b71a5ae01aa492169e9763357c1b99";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rdl-benchmark rdl-cmake rdl-dynamics rdl-msgs rdl-ros-tools rdl-urdfreader ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rdl meta-package'';
    license = with lib.licenses; [ "zlib" ];
  };
}
