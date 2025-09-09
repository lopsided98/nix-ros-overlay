
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ewellix-description, ewellix-interfaces, ewellix-moveit-config }:
buildRosPackage {
  pname = "ros-jazzy-ewellix-lift-common";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ewellix_lift_common-release/archive/release/jazzy/ewellix_lift_common/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "796eadc000f2e163c48439414cc4792b5a74fc8317d50d0db608f6907615a950";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ewellix-description ewellix-interfaces ewellix-moveit-config ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for common Ewellix lift packages";
    license = with lib.licenses; [ bsd3 ];
  };
}
