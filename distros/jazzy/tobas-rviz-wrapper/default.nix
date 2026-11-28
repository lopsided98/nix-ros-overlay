
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rviz-common }:
buildRosPackage {
  pname = "ros-jazzy-tobas-rviz-wrapper";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_rviz_wrapper/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "1ca7741d24f3ed76ef65c6a74a24247fb044ee3f166c36be1056bdcda2ec8014";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rviz-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Reusable Qt wrapper for embedding and configuring RViz in Tobas applications.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
