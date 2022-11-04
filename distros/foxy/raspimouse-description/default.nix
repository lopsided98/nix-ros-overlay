
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, joint-state-publisher, joint-state-publisher-gui, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-foxy-raspimouse-description";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_description-release/archive/release/foxy/raspimouse_description/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "4c14a50a79d663917064832aebf8d44ff60ad26c0d52faaebe53153977566c81";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui robot-state-publisher rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The raspimouse_description package'';
    license = with lib.licenses; [ mit ];
  };
}
