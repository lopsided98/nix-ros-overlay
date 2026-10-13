
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rviz-common }:
buildRosPackage {
  pname = "ros-jazzy-tobas-rviz-wrapper";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_rviz_wrapper/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "28cdb8d22f1bc7fd7b4824f963259283427deb4915848126cb97348cd931b896";
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
