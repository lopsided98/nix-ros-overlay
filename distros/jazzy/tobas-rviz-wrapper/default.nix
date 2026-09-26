
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rviz-common }:
buildRosPackage {
  pname = "ros-jazzy-tobas-rviz-wrapper";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_rviz_wrapper/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "b19c965acb5ab8761ac67febee0e8c8da8609c4a8bb43e24ffed8e3dbd96b374";
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
