
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rdl-cmake, rdl-msgs, rdl-urdfreader, catkin, rdl-dynamics, rdl-ros-tools, rdl-benchmark }:
buildRosPackage {
  pname = "ros-kinetic-rdl";
  version = "1.1.0";

  src = fetchurl {
    url = https://gitlab.com/jlack/rdl_release/repository/archive.tar.gz?ref=release/kinetic/rdl/1.1.0-0;
    sha256 = "c582bf84e03b65888829f3883e3dc0d820b71a5ae01aa492169e9763357c1b99";
  };

  propagatedBuildInputs = [ rdl-cmake rdl-msgs rdl-urdfreader rdl-dynamics rdl-ros-tools rdl-benchmark ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rdl meta-package'';
    license = with lib.licenses; [ "zlib" ];
  };
}
