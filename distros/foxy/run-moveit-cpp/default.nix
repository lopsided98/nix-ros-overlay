
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-common, moveit-ros-planning-interface }:
buildRosPackage {
  pname = "ros-foxy-run-moveit-cpp";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/run_moveit_cpp/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "a72717119a52ea030fbccda142e144388e47f8394ba2645acad2eeb2c3bc85d4";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-ros-planning-interface ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO: Package description'';
    license = with lib.licenses; [ "TODO: License declaration" ];
  };
}
