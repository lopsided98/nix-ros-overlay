
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rviz-common }:
buildRosPackage {
  pname = "ros-jazzy-tobas-rviz-wrapper";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_rviz_wrapper/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "28324582c754dc8010596710338b5343809dfb24a5fb232b006c8df943795973";
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
