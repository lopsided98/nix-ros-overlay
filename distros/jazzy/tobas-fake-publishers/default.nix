
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fake-publishers";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fake_publishers/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "78f6a48036db574a5016835940f106ffc83b6e5a7fd65d344e1694d5ef6f1bce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-constants tobas-msgs-adapter tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Test nodes that publish simulated battery, GNSS, and RC input data.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
