
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, joint-state-publisher, joint-state-publisher-gui, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-raspimouse-description";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_description-release/archive/release/humble/raspimouse_description/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "268227e0f3f6c8de12e561198830ff870384d74901e3e65de669a6fc1a924d28";
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
