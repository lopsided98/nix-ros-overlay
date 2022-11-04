
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rdl-benchmark, rdl-cmake, rdl-dynamics, rdl-msgs, rdl-ros-tools, rdl-urdfreader }:
buildRosPackage {
  pname = "ros-melodic-rdl";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/-/archive/release/melodic/rdl/3.2.0-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "697a892941f85b37eb08270936b94605ef7745c4aa2f7788f64b1a4974b5bf46";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rdl-benchmark rdl-cmake rdl-dynamics rdl-msgs rdl-ros-tools rdl-urdfreader ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rdl meta-package'';
    license = with lib.licenses; [ "Zlib" ];
  };
}
