
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-mola-pose-list";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_pose_list/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "3ed881afaff174f103e8935c5b704b7211afd30aab74fed66e68f8b27cce3135";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ library for searchable pose lists'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
