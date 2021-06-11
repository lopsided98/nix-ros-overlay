
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-common, moveit-ros-planning-interface }:
buildRosPackage {
  pname = "ros-foxy-run-moveit-cpp";
  version = "2.1.4-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/run_moveit_cpp/2.1.4-1.tar.gz";
    name = "2.1.4-1.tar.gz";
    sha256 = "67717836f3cdba66672557c13b566274678f65feefef3537a0ac3a5332f8c867";
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
