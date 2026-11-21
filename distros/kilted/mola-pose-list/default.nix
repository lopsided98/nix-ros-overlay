
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-maps, mrpt-poses }:
buildRosPackage {
  pname = "ros-kilted-mola-pose-list";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_pose_list/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "ea54c3bae48ff445e013b5fab3466ec776f529fa0fa32cfb764175d060963568";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt-maps mrpt-poses ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ library for searchable pose lists";
    license = with lib.licenses; [ gpl3Only ];
  };
}
