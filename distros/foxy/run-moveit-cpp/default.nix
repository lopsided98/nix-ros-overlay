
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, moveit-common, moveit-resources-panda-moveit-config, moveit-ros-planning-interface, robot-state-publisher, rviz2, tf2-ros, warehouse-ros-mongo }:
buildRosPackage {
  pname = "ros-foxy-run-moveit-cpp";
  version = "2.2.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/run_moveit_cpp/2.2.3-1.tar.gz";
    name = "2.2.3-1.tar.gz";
    sha256 = "4eaf91edfdaa1024450c5374d7fa8d57b7021b9f3c6a4899c1afa25b8b0eea25";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager moveit-resources-panda-moveit-config moveit-ros-planning-interface robot-state-publisher rviz2 tf2-ros warehouse-ros-mongo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO: Package description'';
    license = with lib.licenses; [ "TODO: License declaration" ];
  };
}
