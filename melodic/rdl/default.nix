
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rdl-cmake, rdl-msgs, rdl-urdfreader, catkin, rdl-dynamics, rdl-ros-tools, rdl-benchmark }:
buildRosPackage {
  pname = "ros-melodic-rdl";
  version = "3.2.0-r1";

  src = fetchurl {
    url = https://gitlab.com/jlack/rdl_release/repository/archive.tar.gz?ref=release/melodic/rdl/3.2.0-1;
    sha256 = "697a892941f85b37eb08270936b94605ef7745c4aa2f7788f64b1a4974b5bf46";
  };

  propagatedBuildInputs = [ rdl-cmake rdl-msgs rdl-urdfreader rdl-dynamics rdl-ros-tools rdl-benchmark ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rdl meta-package'';
    license = with lib.licenses; [ "zlib" ];
  };
}
